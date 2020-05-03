# invalidate-cloudfront-distributions-action
This action will invalidate Cloudfront Distributions.

To do this, it needs a few things:
1. Environment variables:
    1. The ```AWS_ACCESS_KEY_ID``` environment variable. Set this in your action workflow file. It's best to define a secret in your repository. [Check this page for help.](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)
    2. The ```AWS_SECRET_ACCESS_KEY``` environment variable. Same setup as above.
    3. The ```AWS_DEFAULT_REGION``` environment variable. Set this to the region of your cloudfront distribution.
2. Parameters
    1. The distribution ids, separated by spaces ```bucket-name```.

## Example setup
```yaml
steps:
  - name: Invalidate Cloudfront Distributions
    uses:  bertdecock/invalidate-cloudfront-distributions-action@master
    env:
      AWS_ACCESS_KEY_ID: ${{ secrets.awsAccessKeyId }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.awsSecretAccessKey }}
      AWS_DEFAULT_REGION: 'eu-west-1'
    with:
      distribution-ids: 'ABCDEFG YHBNJUIO QUUDIOPO'
```
