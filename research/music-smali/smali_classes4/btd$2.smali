.class Lbtd$2;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

.field final synthetic c:Lbtd;


# direct methods
.method constructor <init>(Lbtd;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lbtd$2;->c:Lbtd;

    iput-object p2, p0, Lbtd$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbtd$2;->b:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_xmly_account_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtd$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    iget-object v2, p0, Lbtd$2;->b:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
