.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$qWnqOURaJ1yl3sINc25s97KZQ2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$qWnqOURaJ1yl3sINc25s97KZQ2E;->f$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$qWnqOURaJ1yl3sINc25s97KZQ2E;->f$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->lambda$observeData$10$LampSettingManager(Ljava/lang/Boolean;)V

    return-void
.end method
