class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if(len(s)!=len(t)):
            return False
        res_s = {}
        res_t = {}

        for i in s:
            if i in res_s:
                res_s[i]+=1
            else:
                res_s[i]=1
        for i in t:
            if i in res_t:
                res_t[i]+=1
            else:
                res_t[i]=1
        for key in res_s:
            if(res_s[key] != res_t.get(key,0)):
                return False
        return True