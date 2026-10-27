.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILjava/lang/String;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$3:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;->f$3:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->lambda$loadVibrate$1(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILjava/lang/String;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
