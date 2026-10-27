.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->lambda$confirmMuteMicrophone$2(Landroid/content/DialogInterface;)V

    return-void
.end method
