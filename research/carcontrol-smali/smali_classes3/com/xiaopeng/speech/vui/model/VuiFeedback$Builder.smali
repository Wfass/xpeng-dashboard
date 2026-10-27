.class public Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
.super Ljava/lang/Object;
.source "VuiFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/model/VuiFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

.field private content:Ljava/lang/String;

.field private state:I

.field private type:Lcom/xiaopeng/vui/commons/VuiFeedbackType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state:I

    .line 84
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->SUCCESS:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 85
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->type:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->type:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;
    .locals 2

    .line 105
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback;-><init>(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;Lcom/xiaopeng/speech/vui/model/VuiFeedback$1;)V

    return-object v0
.end method

.method public code(Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state:I

    return-object p0
.end method

.method public type(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->type:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p0
.end method
