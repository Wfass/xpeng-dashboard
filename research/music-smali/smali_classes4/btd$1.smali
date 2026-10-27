.class Lbtd$1;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lbtd;


# direct methods
.method constructor <init>(Lbtd;Ljava/lang/String;JZ)V
    .locals 0

    .line 93
    iput-object p1, p0, Lbtd$1;->d:Lbtd;

    iput-object p2, p0, Lbtd$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbtd$1;->b:J

    iput-boolean p5, p0, Lbtd$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_xmly_account_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtd$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-class v1, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 99
    new-instance v1, Lbtd$1$1;

    invoke-direct {v1, p0, v0}, Lbtd$1$1;-><init>(Lbtd$1;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
