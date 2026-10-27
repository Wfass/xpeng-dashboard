.class public Lcom/xiaopeng/xui/vui/VuiView$XAttr;
.super Ljava/lang/Object;
.source "VuiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/VuiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XAttr"
.end annotation


# instance fields
.field private volatile mVuiElementChangedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVuiSelected:Z

.field private mVuiVisibility:I

.field private performVuiAction:Z

.field private vuiAction:Ljava/lang/String;

.field private vuiBizId:Ljava/lang/String;

.field private vuiDisableHitEffect:Z

.field private vuiElementId:Ljava/lang/String;

.field private vuiElementType:Lcom/xiaopeng/vui/commons/VuiElementType;

.field private vuiEnableViewVuiMode:Z

.field private vuiFatherElementId:Ljava/lang/String;

.field private vuiFatherLabel:Ljava/lang/String;

.field private vuiFeedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field private vuiLabel:Ljava/lang/String;

.field private vuiLayoutLoadable:Z

.field private vuiMode:Lcom/xiaopeng/vui/commons/VuiMode;

.field private vuiPosition:Ljava/lang/Integer;

.field private vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

.field private vuiProps:Lorg/json/JSONObject;

.field private vuiValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiSelected:Z

    .line 424
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getElementType(I)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiElementType:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPosition:Ljava/lang/Integer;

    .line 426
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiMode:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 427
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiEnableViewVuiMode:Z

    .line 428
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getViewLeveByPriority(I)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiProps:Lorg/json/JSONObject;

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiElementType:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiElementType:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFeedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFeedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiDisableHitEffect:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiDisableHitEffect:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiEnableViewVuiMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiEnableViewVuiMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiVisibility:I

    return v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # I

    .line 401
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiVisibility:I

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiSelected:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiSelected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->performVuiAction:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->performVuiAction:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiProps:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiProps:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiElementChangedListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->mVuiElementChangedListener:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFatherElementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFatherElementId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFatherLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiFatherLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiElementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiElementId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiLayoutLoadable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiLayoutLoadable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiMode:Lcom/xiaopeng/vui/commons/VuiMode;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Lcom/xiaopeng/vui/commons/VuiMode;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiMode:Lcom/xiaopeng/vui/commons/VuiMode;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiBizId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->vuiBizId:Ljava/lang/String;

    return-object p1
.end method
