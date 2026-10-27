.class Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;
.super Ljava/util/HashMap;
.source "SmartWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v0, "1"

    const-string v1, "CLEAR_DAY"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "2"

    const-string v1, "CLEAR_NIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "3"

    const-string v1, "PARTLY_CLOUDY_DAY"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "4"

    const-string v1, "PARTLY_CLOUDY_NIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "5"

    const-string v1, "CLOUDY"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "6"

    const-string v1, "LIGHT_RAIN"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "7"

    const-string v1, "MODERATE_RAIN"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "8"

    const-string v1, "HEAVY_RAIN"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "9"

    const-string v1, "STORM_RAIN"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "10"

    const-string v1, "LIGHT_SNOW"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "11"

    const-string v1, "MODERATE_SNOW"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "12"

    const-string v1, "HEAVY_SNOW"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "13"

    const-string v1, "STORM_SNOW"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "14"

    const-string v1, "FOG"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "15"

    const-string v1, "DUST"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "16"

    const-string v1, "SAND"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "17"

    const-string v1, "LIGHT_HAZE"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "18"

    const-string v1, "MODERATE_HAZE"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "19"

    const-string v1, "HEAVY_HAZE"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
