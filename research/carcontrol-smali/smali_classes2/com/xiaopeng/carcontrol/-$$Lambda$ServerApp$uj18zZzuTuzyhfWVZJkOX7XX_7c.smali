.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$ServerApp$uj18zZzuTuzyhfWVZJkOX7XX_7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/ServerApp;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/ServerApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$ServerApp$uj18zZzuTuzyhfWVZJkOX7XX_7c;->f$0:Lcom/xiaopeng/carcontrol/ServerApp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$ServerApp$uj18zZzuTuzyhfWVZJkOX7XX_7c;->f$0:Lcom/xiaopeng/carcontrol/ServerApp;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/ServerApp;->lambda$onAppCreate$0$ServerApp()V

    return-void
.end method
