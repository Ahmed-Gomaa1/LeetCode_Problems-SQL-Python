class Solution(object):
    def mergeAlternately(self, word1, word2):
        new_word = ''
        if len(word1) < len(word2): 
            for i in range(len(word1)): 
                new_word =new_word + word1[i] + word2[i] 
            return (new_word + word2[len(word1):])
        else:
            for i in range(len(word2)):
                new_word =new_word + word1[i] + word2[i]
            return (new_word + word1[len(word2):])