.class Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview$1;
.super Ljava/util/HashMap;
.source "ARouter$$Group$$webview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview;->loadInto(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview;


# direct methods
.method constructor <init>(Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview;)V
    .locals 1

    .line 21
    iput-object p1, p0, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview$1;->a:Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dayUrl"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nightUrl"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "titleEnable"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$webview$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
