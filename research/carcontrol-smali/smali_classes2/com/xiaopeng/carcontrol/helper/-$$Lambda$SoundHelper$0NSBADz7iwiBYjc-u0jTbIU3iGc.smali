.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$1:Z

    iput p3, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$1:Z

    iget v2, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->lambda$play$1(Ljava/lang/String;ZI)V

    return-void
.end method
