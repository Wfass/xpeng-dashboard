.class public final synthetic Lcom/xiaopeng/unity/-$$Lambda$AppManager$r6B5JKXulLOmSN344O9GJgQ1XPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/AppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/AppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/-$$Lambda$AppManager$r6B5JKXulLOmSN344O9GJgQ1XPY;->f$0:Lcom/xiaopeng/unity/AppManager;

    return-void
.end method


# virtual methods
.method public final onCarServiceConnected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/-$$Lambda$AppManager$r6B5JKXulLOmSN344O9GJgQ1XPY;->f$0:Lcom/xiaopeng/unity/AppManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/AppManager;->lambda$observeData$1$AppManager(Z)V

    return-void
.end method
