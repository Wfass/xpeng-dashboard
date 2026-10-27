.class public final synthetic Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$QDFukRMz0U_tmLyTyqshPtfBR6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$QDFukRMz0U_tmLyTyqshPtfBR6c;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$QDFukRMz0U_tmLyTyqshPtfBR6c;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->lambda$observeData$0$CapsuleManager(Ljava/lang/String;)V

    return-void
.end method
