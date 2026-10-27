.class public Lcom/alibaba/sdk/android/httpdns/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/StringBuilder;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/h/a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/h/a;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/h/a;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/h/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/h/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/h/a;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/h/a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/h/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/h/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/h/a;->a:Ljava/lang/StringBuilder;

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
