local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.cognicrypt', 'eclipse-cognicrypt') {
  settings+: {
    description: "",
    name: " Eclipse CogniCrypt",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('CogniCrypt') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "develop",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "CogniCrypt is an Eclipse plugin that supports Java developers in using Java Cryptographic APIs.",
      has_projects: false,
      homepage: "",
      topics+: [
        "code-generation",
        "cryptography",
        "java",
        "static-analysis"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Governance') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "This project mainly hosts an issue tracker we use to keep track of the multiple projects contributing to CogniCrypt",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('cognicrypt-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Published Cognicrypt website ",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hugo-solstice-theme') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Eclipse Foundation Solstice Theme for Hugo!",
      has_issues: false,
      homepage: "https://eclipsefdn.github.io/hugo-solstice-theme/about/",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hugo-website-sources') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('HUGO_TOKEN') {
          value: "********",
        },
      ],
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}