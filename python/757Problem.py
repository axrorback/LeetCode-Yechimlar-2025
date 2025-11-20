class Solution:
    def intersectionSizeTwo(self, intervals: List[List[int]]) -> int:
        N = len(intervals)

        intervals.sort(key=lambda x: (x[1], x[0]))

        sl = SortedList()
        for start, end in intervals:
            left = sl.bisect_left(start)
            right = sl.bisect_right(end)

            if right - left == 0:
                sl.add(end - 1)
                sl.add(end)
            elif right - left == 1:
                if end not in sl:
                    sl.add(end)
                else:
                    sl.add(end - 1)
        return len(sl)
