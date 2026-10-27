.class public Lcom/xiaopeng/xui/vui/a$a;
.super Ljava/lang/Object;
.source "VuiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private acd:Ljava/lang/String;

.field private ace:Lcom/xiaopeng/vui/commons/VuiElementType;

.field private acf:Ljava/lang/String;

.field private acg:Ljava/lang/String;

.field private ach:Ljava/lang/String;

.field private aci:Z

.field private acj:Lcom/xiaopeng/vui/commons/VuiMode;

.field private ack:Ljava/lang/String;

.field private acm:Lcom/xiaopeng/vui/commons/VuiPriority;

.field private acn:Ljava/lang/String;

.field private aco:Ljava/lang/Integer;

.field private acp:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field private acq:Lorg/json/JSONObject;

.field private acr:Z

.field private acs:Z

.field private act:Ljava/lang/Object;

.field private volatile acu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/vui/commons/a;",
            ">;"
        }
    .end annotation
.end field

.field private acv:I

.field private acw:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/a$a;->acw:Z

    .line 424
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/a/a;->eB(I)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/vui/a$a;->ace:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/a$a;->aco:Ljava/lang/Integer;

    .line 426
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->Zq:Lcom/xiaopeng/vui/commons/VuiMode;

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/a$a;->acj:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 427
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/a$a;->acs:Z

    .line 428
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a/a;->ey(I)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/a$a;->acm:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/a$a;->acq:Lorg/json/JSONObject;

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;I)I
    .locals 0

    .line 401
    iput p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acv:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/a$a;->ace:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->ace:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acp:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acj:Lcom/xiaopeng/vui/commons/VuiMode;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acm:Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->aco:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acq:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/a$a;Z)Z
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/a$a;->aci:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/xui/vui/a$a;)Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/a$a;->aci:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/vui/a$a;Z)Z
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acr:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaopeng/xui/vui/a$a;)Lorg/json/JSONObject;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/a$a;->acq:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/xui/vui/a$a;Z)Z
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acs:Z

    return p1
.end method

.method static synthetic d(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/Object;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/a$a;->act:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xiaopeng/xui/vui/a$a;Z)Z
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/a$a;->acw:Z

    return p1
.end method

.method static synthetic e(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->ach:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/a$a;->acu:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/xui/vui/a$a;)I
    .locals 0

    .line 401
    iget p0, p0, Lcom/xiaopeng/xui/vui/a$a;->acv:I

    return p0
.end method

.method static synthetic f(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a$a;->ack:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/xiaopeng/xui/vui/a$a;)Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/a$a;->acw:Z

    return p0
.end method
