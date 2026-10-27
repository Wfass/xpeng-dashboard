.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5-CBt1ZM183GgnT4_efkiP7zkO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5-CBt1ZM183GgnT4_efkiP7zkO0;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5-CBt1ZM183GgnT4_efkiP7zkO0;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->lambda$observeData$12$LampManagerImpl(Ljava/lang/Boolean;)V

    return-void
.end method
