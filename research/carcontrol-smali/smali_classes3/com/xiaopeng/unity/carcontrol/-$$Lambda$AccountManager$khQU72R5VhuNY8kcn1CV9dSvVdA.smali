.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$khQU72R5VhuNY8kcn1CV9dSvVdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$khQU72R5VhuNY8kcn1CV9dSvVdA;->f$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$khQU72R5VhuNY8kcn1CV9dSvVdA;->f$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->lambda$observeData$1$AccountManager(Ljava/lang/String;)V

    return-void
.end method
