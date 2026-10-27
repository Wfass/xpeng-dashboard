.class Lcom/amap/api/services/a/at$1;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/at;->searchWeatherAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/at;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/at;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 71
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 72
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v2, v3, :cond_0

    .line 82
    const/16 v2, 0x515

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    iget-object v5, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v5}, Lcom/amap/api/services/a/at;->b(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 83
    const-string v3, "errorCode"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v3, Lcom/amap/api/services/a/q$l;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$l;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    :try_start_1
    const-string v4, "WeatherSearch"

    const-string v5, "searchWeatherAnsyThrowable"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    new-instance v3, Lcom/amap/api/services/a/q$l;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$l;-><init>()V

    .line 92
    :goto_0
    iput v2, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->c(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/services/a/q$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 94
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->d(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/services/a/q$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 95
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    iget-object v1, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v1}, Lcom/amap/api/services/a/at;->e(Lcom/amap/api/services/a/at;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    goto/16 :goto_4

    .line 84
    :catch_1
    move-exception v3

    .line 85
    :try_start_2
    const-string v4, "errorCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v4, "WeatherSearch"

    const-string v5, "searchWeatherAsyn"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    new-instance v3, Lcom/amap/api/services/a/q$l;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$l;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v4, Lcom/amap/api/services/a/q$l;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$l;-><init>()V

    .line 92
    iput v2, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->c(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/services/a/q$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 94
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->d(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/services/a/q$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 95
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    iget-object v1, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v1}, Lcom/amap/api/services/a/at;->e(Lcom/amap/api/services/a/at;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    throw v3

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 101
    const/16 v2, 0x516

    :try_start_3
    iget-object v3, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    iget-object v5, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v5}, Lcom/amap/api/services/a/at;->f(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 102
    const-string v3, "errorCode"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    new-instance v3, Lcom/amap/api/services/a/q$k;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$k;-><init>()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_3

    .line 106
    :catch_2
    move-exception v3

    .line 107
    :try_start_4
    const-string v4, "WeatherSearch"

    const-string v5, "searchWeatherAnsyThrowable"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    new-instance v3, Lcom/amap/api/services/a/q$k;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 111
    :goto_2
    iput v2, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->c(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 113
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->g(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 114
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v1}, Lcom/amap/api/services/a/at;->e(Lcom/amap/api/services/a/at;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    goto :goto_4

    .line 103
    :catch_3
    move-exception v3

    .line 104
    :try_start_5
    const-string v4, "errorCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v4, "WeatherSearch"

    const-string v5, "searchWeatherAsyn"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    new-instance v3, Lcom/amap/api/services/a/q$k;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$k;-><init>()V

    goto :goto_2

    :goto_3
    new-instance v4, Lcom/amap/api/services/a/q$k;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 111
    iput v2, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->c(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 113
    iget-object v2, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v2}, Lcom/amap/api/services/a/at;->g(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 114
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/amap/api/services/a/at$1;->a:Lcom/amap/api/services/a/at;

    invoke-static {v1}, Lcom/amap/api/services/a/at;->e(Lcom/amap/api/services/a/at;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    throw v3

    .line 76
    :cond_1
    :try_start_6
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_6 .. :try_end_6} :catch_4

    .line 77
    :catch_4
    move-exception v0

    .line 78
    const-string v1, "WeatherSearch"

    const-string v2, "searchWeatherAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    nop

    .line 119
    :cond_2
    :goto_4
    return-void
.end method
