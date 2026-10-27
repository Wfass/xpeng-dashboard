.class Lbbo$6;
.super Ljava/lang/Object;
.source "PreloadPageHandler.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbo;


# direct methods
.method constructor <init>(Lbbo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lbbo$6;->a:Lbbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PreloadPageHandler"

    const-string v1, "run: doOnComplete====="

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
