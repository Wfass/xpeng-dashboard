.class Lcom/xiaopeng/musicradio/model/common/a$8;
.super Ljava/lang/Object;
.source "AppLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/common/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/common/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/common/a;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$8;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqr;->a(Z)V

    return-void
.end method
