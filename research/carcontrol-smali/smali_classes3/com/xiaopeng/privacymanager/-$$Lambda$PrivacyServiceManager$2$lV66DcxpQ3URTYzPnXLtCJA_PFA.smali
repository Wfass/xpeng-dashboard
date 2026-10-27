.class public final synthetic Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;->f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    iput p2, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;->f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    iget v1, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$lV66DcxpQ3URTYzPnXLtCJA_PFA;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->lambda$onDialogShown$1(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;I)V

    return-void
.end method
