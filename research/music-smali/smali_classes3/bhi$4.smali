.class Lbhi$4;
.super Ljava/lang/Object;
.source "NeteaseDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhi;


# direct methods
.method constructor <init>(Lbhi;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lbhi$4;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 423
    iget-object v0, p0, Lbhi$4;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 424
    invoke-static {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->a(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v0

    .line 425
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/d;->a()Lcom/xiaopeng/appstore/storeprovider/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    return-void
.end method
