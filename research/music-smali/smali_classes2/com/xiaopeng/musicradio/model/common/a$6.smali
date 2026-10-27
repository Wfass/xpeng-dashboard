.class Lcom/xiaopeng/musicradio/model/common/a$6;
.super Ljava/lang/Object;
.source "AppLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/common/a;->b()V
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

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$6;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/xiaopeng/musicradio/common/h;->b()Lcom/xiaopeng/musicradio/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/h;->a()V

    return-void
.end method
