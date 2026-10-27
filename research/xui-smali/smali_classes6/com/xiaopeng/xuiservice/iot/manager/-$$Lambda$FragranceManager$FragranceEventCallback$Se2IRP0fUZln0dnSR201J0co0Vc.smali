.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;

    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->lambda$onChangeEvent$1(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;I)V

    return-void
.end method
