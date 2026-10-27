.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$MirrorControlManagerImpl$peBX5pOU3sYEw4rYNXb3FQkQT1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$MirrorControlManagerImpl$peBX5pOU3sYEw4rYNXb3FQkQT1w;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$MirrorControlManagerImpl$peBX5pOU3sYEw4rYNXb3FQkQT1w;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->lambda$observeData$0$MirrorControlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    return-void
.end method
