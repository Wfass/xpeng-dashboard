.class public final enum Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 57
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 58
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 59
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v5, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    aput-object v5, v0, v1

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    .line 55
    const-class v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    .line 55
    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-object v0
.end method
