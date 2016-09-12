using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WordCount.Converter;

namespace WordCount.Tests
{
    [TestClass]
    public class ArabicRomanConverterTest
    {
        [TestMethod]
        public void TestSuccessfulArabicToRomanConversion()
        {
            var number = 1973;
            var expected = "MCMLXXIII";

            var actual = ArabicRomanConverter.ToRoman(number);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void TestSuccessfulRomanToArabicConversion()
        {
            var number = "MCMLXXIII";
            var expected = 1973;

            long actual;
            var result = ArabicRomanConverter.TryToArabic(number, out actual);

            Assert.IsTrue(result);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void TestInvalidRomanToArabicConversion()
        {
            var number = "WMCMLXXIII";

            long actual;
            var result = ArabicRomanConverter.TryToArabic(number, out actual);

            Assert.IsFalse(result);
        }
    }
}
