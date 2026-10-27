.class Ljavax/validation/Validation$DefaultValidationProviderResolver;
.super Ljava/lang/Object;
.source "Validation.java"

# interfaces
.implements Ljavax/validation/ValidationProviderResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultValidationProviderResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/validation/Validation$1;)V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljavax/validation/Validation$DefaultValidationProviderResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public getValidationProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/validation/spi/ValidationProvider<",
            "*>;>;"
        }
    .end annotation

    .line 299
    invoke-static {}, Ljavax/validation/Validation$GetValidationProviderListAction;->getValidationProviderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
