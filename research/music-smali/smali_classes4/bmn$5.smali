.class Lbmn$5;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmn;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

.field final synthetic b:Lbmn;


# direct methods
.method constructor <init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lbmn$5;->b:Lbmn;

    iput-object p2, p0, Lbmn$5;->a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    iget-object v1, p0, Lbmn$5;->a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0, v1}, Lbmo;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    return-void
.end method
