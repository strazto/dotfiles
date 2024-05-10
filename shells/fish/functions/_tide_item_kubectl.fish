function _tide_item_kubectl
    set context (kubectl config view --minify --output 'jsonpath={.current-context}/{..namespace}' 2>/dev/null | \
                 awk -v len="$tide_kubectl_truncation_length" '{print substr($0, length($0)-len+1)}')
    if set -q context[1]
        _tide_print_item kubectl $tide_kubectl_icon' ' (string replace -r '/(|default)$' '' $context)
    end
end
