.class Lcom/xiaopeng/musicradio/model/dui/d$5;
.super Ljava/lang/Object;
.source "DuiFmModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/d;->g()V
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

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/d$5;->a:Lcom/xiaopeng/musicradio/model/dui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 138
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 139
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v1, v0}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method
