.class Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;
.super Ljava/util/HashMap;
.source "ApplistConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/applist/ApplistConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_PRESET"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_THIRD"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_ALIPAY"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_ACCESS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_HICAR"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_CARLINK"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_PRE_POSITION"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_DOWNLOADING_APPS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_BROWSER_QUICK_LINK_APPS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_PRE_DOWNLOADED_APPS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_SECONDARY_AREA_APP"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_XPAD_APPS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CATEGORY_MOBILE_APPS"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
