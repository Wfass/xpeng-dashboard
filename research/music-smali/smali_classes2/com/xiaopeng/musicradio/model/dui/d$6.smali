.class Lcom/xiaopeng/musicradio/model/dui/d$6;
.super Ljava/lang/Object;
.source "DuiFmModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/d;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/d$6;->a:Lcom/xiaopeng/musicradio/model/dui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    invoke-static {}, Lbcl;->a()Lbcl;

    move-result-object v0

    invoke-virtual {v0}, Lbcl;->b()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiFmModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 152
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbda;->a(Ljava/lang/String;)V

    return-void
.end method
