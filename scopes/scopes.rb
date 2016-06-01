def flower
  @text = 'flower'
  yield if block_given?
end

def flower2(&blk)
  @text = 'flower'
  blk.call
end
