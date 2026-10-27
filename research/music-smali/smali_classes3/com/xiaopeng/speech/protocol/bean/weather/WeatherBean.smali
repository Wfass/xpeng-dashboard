.class public Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "WeatherBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$a;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final TEMP_SUPREFIX:Ljava/lang/String; = "\u2103"


# instance fields
.field private mWeatherDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$a;",
            ">;"
        }
    .end annotation
.end field

.field private searchDay:Ljava/lang/String;

.field private today:Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method
