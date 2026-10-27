.class public Lcom/xiaopeng/speech/actorapi/SupportActor;
.super Lcom/xiaopeng/speech/actorapi/ResultActor;
.source "SupportActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "SupportActor"

.field public static final TTS_DEFAULT_NOT_SUPPORT:Ljava/lang/String;

.field public static final TTS_DEFAULT_SUPPORT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lbwa$a;->okay:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/d;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/actorapi/SupportActor;->TTS_DEFAULT_SUPPORT:Ljava/lang/String;

    .line 17
    sget v0, Lbwa$a;->not_support:I

    .line 18
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/d;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/actorapi/SupportActor;->TTS_DEFAULT_NOT_SUPPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    const-string p1, "SupportActor"

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/SupportActor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;->b(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbxi;)Lcom/xiaopeng/speech/actorapi/SupportActor;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->a(Lbxh;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/actorapi/SupportActor;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/SupportActor;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/actorapi/SupportActor;

    return-object p1
.end method
