.class Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity$1;
.super Ljava/lang/Object;
.source "GpsDebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->onEvent(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FL:Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity$1;->FL:Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    const-string v0, "/data/gps/"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 55
    return-void
.end method
