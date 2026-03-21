# Copyright (C) 2026 my-app-s
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

 total_number = ARGV[0].to_i

def declination(number, form_one, form_two, form_three)
    # hand over in function arguments number, one, two and tree declination (total four argument)
    if number == nil or !number.is_a?(Numeric)
        number = 0
    end

    remainder = number % 10

    if remainder == 1
        return  "#{number} #{form_one}!"
    elsif remainder > 1 and remainder <= 4
        return  "#{number} #{form_two}!"
    elsif remainder > 4 or remainder == 0
        return  "#{number} #{form_three}!"
    end
end


puts declination(total_number, "крокодил", "крокодила", "крокодилов")