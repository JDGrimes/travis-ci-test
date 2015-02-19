
        # Install a package from GitHub.
        install-from-github() {
        
        	local GITHUB_SRC=${1}_GITHUB_SRC
        	local GITHUB_TREE=${1}_GITHUB_TREE
        	local DIR=${1}_DIR
        echo "https://github.com/${!GITHUB_SRC}/archive/${!GITHUB_TREE}.tar.gz"
            mkdir -p "${!DIR}"
            curl -L "https://github.com/${!GITHUB_SRC}/archive/${!GITHUB_TREE}.tar.gz" \
                | tar xvz --strip-components=1 -C "${!DIR}"
        }
