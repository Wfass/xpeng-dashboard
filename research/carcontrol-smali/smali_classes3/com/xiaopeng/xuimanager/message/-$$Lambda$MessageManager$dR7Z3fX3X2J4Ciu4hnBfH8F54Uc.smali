.class public final synthetic Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/message/MessageManager;->lambda$dispatchMessage$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;)V

    return-void
.end method
