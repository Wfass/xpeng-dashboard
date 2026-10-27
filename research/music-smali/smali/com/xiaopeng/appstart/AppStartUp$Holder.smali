.class Lcom/xiaopeng/appstart/AppStartUp$Holder;
.super Ljava/lang/Object;
.source "AppStartUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstart/AppStartUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/appstart/AppStartUp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/appstart/AppStartUp;

    invoke-direct {v0}, Lcom/xiaopeng/appstart/AppStartUp;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstart/AppStartUp$Holder;->INSTANCE:Lcom/xiaopeng/appstart/AppStartUp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/appstart/AppStartUp;
    .locals 1

    .line 10
    sget-object v0, Lcom/xiaopeng/appstart/AppStartUp$Holder;->INSTANCE:Lcom/xiaopeng/appstart/AppStartUp;

    return-object v0
.end method
