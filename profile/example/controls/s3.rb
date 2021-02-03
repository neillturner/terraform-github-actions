control 's3 buckets' do
  title 's3 buckets tests'
  impact 1.0 

  bucket_name = attribute('bucket_name')

  describe aws_s3_bucket(bucket_name: bucket_name.to_s) do
    it { should exist }
    it { should_not be_public }
  end
end  
  