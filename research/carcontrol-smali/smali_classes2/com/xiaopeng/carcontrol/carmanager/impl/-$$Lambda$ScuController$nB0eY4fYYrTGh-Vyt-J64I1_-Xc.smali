.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;->f$1:I

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->lambda$setNgpTipsMode$42$ScuController(ILjava/lang/Void;)V

    return-void
.end method
