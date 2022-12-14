#
# Be sure to run `pod lib lint EosioSwiftVault.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EosioSwiftVault'
  s.version          = '1.0.0'
  s.summary          = 'Keychain and Secure Enclave functions for EOSIO.'
  s.homepage         = 'https://github.com/sweatpotato13/eosio-swift-vault'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                           Copyright (c) 2017-2022 Cute_Wisp and its contributors.  All rights reserved.
                         LICENSE
                       }
  s.author           = { 'Todd Bowden' => 'todd.bowden@block.one',
                         'Serguei Vinnitskii' => 'serguei.vinnitskii@block.one',
                         'Farid Rahmani' => 'farid.rahmani@block.one',
                         'Brandon Fancher' => 'brandon.fancher@block.one',
                         'Mark Johnson' => 'mark.johnson@block.one',
                         'Paul Kim' => 'paul.kim@block.one',
                         'Steve McCoole' => 'steve.mccoole@objectpartners.com',
                         'Ben Martell' => 'ben.martell@objectpartners.com', 
                         'Cute_Wisp' => 'sweatpotato13@gmail.com' }
  s.source           = { :git => 'https://github.com/sweatpotato13/eosio-swift-vault.git', :tag => s.version.to_s }

  s.swift_version         = '5.0'
  s.ios.deployment_target = '12.0'

  s.subspec 'Vault' do |ss|
    ss.source_files = 'Sources/EosioSwiftVault/**/*.swift'

    ss.pod_target_xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'CLANG_ENABLE_MODULES' => 'YES',
      'SWIFT_COMPILATION_MODE' => 'wholemodule',
      'ENABLE_BITCODE' => 'YES' }

    ss.ios.dependency 'EosioSwift/Core', '~> 1.0.0'
    ss.ios.dependency 'EosioSwift/Ecc', '~> 1.0.0'
  end

  s.subspec 'VaultSignatureProvider' do |ss|
    ss.source_files = 'Sources/EosioSwiftVaultSignatureProvider/**/*.swift'

    ss.pod_target_xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'CLANG_ENABLE_MODULES' => 'YES',
      'SWIFT_COMPILATION_MODE' => 'wholemodule',
      'ENABLE_BITCODE' => 'YES' }

    ss.ios.dependency 'EosioSwift/Core', '~> 1.0.0'
    ss.ios.dependency 'EosioSwift/Ecc', '~> 1.0.0'
    ss.ios.dependency 'EosioSwiftVault/Vault'
  end

end
