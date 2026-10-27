.class Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;
.super Ljava/util/HashMap;
.source "XpPictureNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 15

    .line 73
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const v0, 0x21402e03

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;

    const-string v2, "showoff\u706f\u8bed\u5f00\u5173"

    const-string v3, "ESP off\u6307\u793a\u706f"

    const-string v5, "Showoff_cId"

    const-string v6, "Showoff_channel"

    const-string v7, "ESP off\u6307\u793a\u706f\u72b6\u6001\u53d8\u66f4"

    const-string/jumbo v12, "\u5185\u5bb9\u5927\u6807\u9898\u3002\u3002\u3002"

    const-string/jumbo v13, "\u603b\u7ed3\u6587\u5b57\u3002\u3002\u3002"

    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f08009e

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IZIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v14}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const v0, 0x2140144f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;

    const-string/jumbo v2, "\u5145\u7535\u706f\u8bed\u5f00\u5173"

    const-string v3, "12V\u84c4\u7535\u6c60\u5145\u7535\u7cfb\u7edf\u6307\u793a\u706f"

    const-string v5, "Charging_cId"

    const-string v6, "Charging_channel"

    const-string/jumbo v7, "\u7535\u6c60\u5145\u7535\u72b6\u6001\u53d8\u66f4"

    const-string/jumbo v12, "\u5145\u7535\u706f\u8bed\u5f00\u5173"

    const-string/jumbo v13, "\u603b\u7ed3\u6587\u5b57\u3002\u3002\u3002"

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IZIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v14}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const v0, 0x2140240c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;

    const-string/jumbo v2, "\u7535\u5b50\u5239\u8f66\uff08EPB\uff09\u6545\u969c\u6307\u793a\u706f"

    const-string/jumbo v3, "\u7535\u5b50\u5239\u8f66\uff08EPB\uff09\u53d1\u73b0\u6545\u969c\uff0c\u8bf7\u53ca\u65f6\u4fee\u590d"

    const-string v5, "EPB_SysWarning_cId"

    const-string v6, "EPB_SysWarning_channel"

    const-string/jumbo v7, "\u7535\u5b50\u5239\u8f66\uff08EPB\uff09\u51fa\u73b0\u6545\u969c"

    const-string/jumbo v12, "\u5185\u5bb9\u5927\u6807\u9898\u3002\u3002\u3002"

    const-string/jumbo v13, "\u603b\u7ed3\u6587\u5b57\u3002\u3002\u3002"

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IZIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v14}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
