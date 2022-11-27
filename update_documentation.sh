#! /bin/sh
echo "Updating documentation for EosioSwiftVault..."
jazzy --module EosioSwiftVault --swift-build-tool spm --build-tool-arguments -Xswiftc,-swift-version,-Xswiftc,5 --clean --theme fullwidth --github_url https://github.com/sweatpotato13/eosio-swift-vault --github-file-prefix https://github.com/sweatpotato13/eosio-swift-vault/tree/main --hide-documentation-coverage --undocumented-text "" --copyright "Copyright (c) 2017-2022 Cute_Wisp and its contributors. All rights reserved." --readme README.md --output docs/EosioSwiftVault

echo "Updating documentation for EosioSwiftVaultSignatureProvider..."
jazzy --module EosioSwiftVaultSignatureProvider --swift-build-tool spm --build-tool-arguments -Xswiftc,-swift-version,-Xswiftc,5 --clean --theme fullwidth --github_url https://github.com/sweatpotato13/eosio-swift-vault --github-file-prefix https://github.com/sweatpotato13/eosio-swift-vault/tree/main --hide-documentation-coverage --undocumented-text "" --copyright "Copyright (c) 2017-2022 Cute_Wisp and its contributors. All rights reserved." --readme README.md --output docs/EosioSwiftVaultSignatureProvider
