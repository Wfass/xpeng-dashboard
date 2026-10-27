.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;
.source "HttpCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter$Holder;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "net_http_stat"

.field private static final MOLE_TRAFFIC_HTTP_BUTTON_ID:Ljava/lang/String; = "B004"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    const-string v0, "net_http_stat"

    const-string v1, "B004"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v0

    return-object v0
.end method
