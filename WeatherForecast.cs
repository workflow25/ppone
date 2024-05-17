using Flurl.Http;
using Flurl;
using System.Net.Http;
using System;
using Newtonsoft.Json.Bson;
using Newtonsoft.Json;

namespace WebApplication1
{
    public class WeatherForecast
    {
        public DateTime Date { get; set; }

        public int TemperatureC { get; set; }

        public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);

        public string? Summary { get; set; }
    }

    public class test
    {
        public async Task<bool> check()
        {
            var flurlClient = new FlurlClient(new HttpClient());
            var poco = await flurlClient.Request("").GetJsonAsync<WeatherForecast>();

            return true;
        }

        public static string ToBson<T>(T value)
        {
            using (MemoryStream ms = new MemoryStream())
            using (BsonDataWriter datawriter = new BsonDataWriter(ms))
            {
                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(datawriter, value);
                return Convert.ToBase64String(ms.ToArray());
            }

        }

        public static T FromBson<T>(string base64data)
        {
            byte[] data = Convert.FromBase64String(base64data);

            using (MemoryStream ms = new MemoryStream(data))
            using (BsonDataReader reader = new BsonDataReader(ms))
            {
                JsonSerializer serializer = new JsonSerializer();
                return serializer.Deserialize<T>(reader);
            }
        }
    }
}
