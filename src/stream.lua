--- 
-- Sequential and parallel stream processing library for Lua
--
--

local t={}
local main_mt={}

local mt={}

---
-- Creates an empty stream
function t.new(f)
	return setmetatable({},mt)
end

---
-- Evaluates if the passed object is a stream
function t.is_stream(obj)
	return getmetatable(obj)==mt
end

---
-- Creates an empty stream
function t.empty() 
	local stream=t.new(function() end)
	stream:close()
	return stream
end

---
-- Returns a sequential Stream containing the elements.
function t.of(...)
	
end

function t.concat(stream1,stream2)
end

function main_mt.__call(...)
	return t.new(...)
end


--- 
-- Returns a stream consisting of the results of applying the given
-- function to the elements of this stream.
--
function mt:map(f)
end

--- 
-- Returns a stream consisting of the results of replacing each element of
-- this stream with the contents of a mapped stream produced by applying
-- the provided mapping function to each element. 
--
function mt:flatMap(f,stream)

end

---
-- Returns a stream consisting of the elements of this stream that match
-- the given predicate.
function mt:filter(f)
end

---
-- Returns a stream consisting of the distinct elements (according to
-- the __eq metamethod) of this stream.
function mt:distinct()
end

---
-- Returns a stream consisting of the elements of this stream, sorted
-- according to natural order.  If the elements of this stream are not
-- comparable, an error may be thrown when the terminal operation is executed.
function mt:sorted(comparator)
end


---
-- Returns a stream consisting of the elements of this stream, additionally
-- performing the provided action on each element as elements are consumed
-- from the resulting stream.
--
function mt:peek(f)
end

---
-- Returns a stream consisting of the elements of this stream, truncated
-- to be no longer than max_size in length.
function mt:limit(max_size)
end

---
-- Returns a stream consisting of the remaining elements of this stream
-- after discarding the first n elements of the stream.
-- If this stream contains fewer than n elements then an
-- empty stream will be returned.
function mt:skip(n)
end

---
-- Performs an action for each element of this stream.
function mt:forEach(f)
end

---
-- Returns an array containing the elements of this stream.
function mt:to_array()
end

---
-- Performs a reduction on the elements of this stream, 
-- using the provided identity value and an
-- associative accumulation function, and returns the reduced value.
function mt:reduce(f, identity)
end

---
-- Returns the count of elements in this stream.
function mt:count()
end

---
-- Returns whether any elements of this stream match the provided
-- predicate.  May not evaluate the predicate on all elements if not
-- necessary for determining the result.  If the stream is empty then
-- false is returned and the predicate is not evaluated.
function mt:any_match(f)
end

---
-- Returns whether all elements of this stream match the provided predicate.
-- May not evaluate the predicate on all elements if not necessary for
-- determining the result.  If the stream is empty then true is
-- returned and the predicate is not evaluated.
function mt:all_match(f)
end

---
-- Returns whether no elements of this stream match the provided predicate.
-- May not evaluate the predicate on all elements if not necessary for
-- determining the result.  If the stream is empty then true is
-- returned and the predicate is not evaluated.
function mt:none_match(predicate)
end

---
-- Returns a value describing the first element of this stream,
-- or nil if the stream is empty.  If the stream has
-- no encounter order, then any element may be returned.
function mt:first()
end

---
-- Returns a value describing some element of the stream, or an
-- nil if the stream is empty.
function mt:any()
end

---
-- Closes the current stream
function mt:close()
end

return setmetatable(t,main_mt)
