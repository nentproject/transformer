class JobStatus < EnumerateIt::Base
  associate_values(
    pending: 0,
    processing: 1,
    successful: 2,
    failed: 3
  )
end
