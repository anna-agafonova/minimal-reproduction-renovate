# minimal-reproduction-renovate

Jenkins version in Dockerfile is 2.426.3. Renovate jenkins plugins constraint is set to `>= 2.0 <= 2.426.3`

Expected behavior :
- Renovate should only update the list of plugins as the latest possible **for the jenkins version**

Actual behavior:
- Renovate disregards the constraint and updates the plugins to the latest available versions
- Example: `mailer (472.vf7c289a_4b_420) requires a greater version of Jenkins (2.440.1) than 2.426.3`
