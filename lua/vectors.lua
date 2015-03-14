Vector = (function (class, meta, prototype)
  class.new = function (i, j)
    return setmetatable({i = i, j = j}, meta)
  end
  prototype.magnitude = function (self)
    return math.sqrt(self.i * self.i + self.j * self.j)
  end
  meta.__index = prototype
  meta.__add = function (self, v)
      return class.new(self.i + v.i, self.j + v.j)
  end
  meta.__mul = function (self, v)
    return self.i * v.i + self.j * v.j
  end
  meta.__tostring = function (self)
    return string.format('<%g,%g>', self.i, self.j)
  end
  return class
end)({}, {}, {})

u = Vector.new(3, 4)
v = Vector.new(-5, 10)
print(u.i)                 -- <3,4>
print(u.j)                 -- <-5,10>
print(u:magnitude())       -- 5.0
print(u + v)               -- <-2,14>
print(u * v)               -- 25
