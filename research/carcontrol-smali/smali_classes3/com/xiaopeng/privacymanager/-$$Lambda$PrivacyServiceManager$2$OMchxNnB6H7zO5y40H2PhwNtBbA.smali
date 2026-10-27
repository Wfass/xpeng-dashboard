.class public final synthetic Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    iput p2, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$2:Z

    iput p4, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$0:Lcom/xiaopeng/privacymanager/PrivacyDialogListener;

    iget v1, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$2:Z

    iget v3, p0, Lcom/xiaopeng/privacymanager/-$$Lambda$PrivacyServiceManager$2$OMchxNnB6H7zO5y40H2PhwNtBbA;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;->lambda$onDialogClosed$0(Lcom/xiaopeng/privacymanager/PrivacyDialogListener;IZI)V

    return-void
.end method
