.class Ljavax/validation/Validation$GenericBootstrapImpl;
.super Ljava/lang/Object;
.source "Validation.java"

# interfaces
.implements Ljavax/validation/bootstrap/GenericBootstrap;
.implements Ljavax/validation/spi/BootstrapState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericBootstrapImpl"
.end annotation


# instance fields
.field private defaultResolver:Ljavax/validation/ValidationProviderResolver;

.field private resolver:Ljavax/validation/ValidationProviderResolver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/validation/Validation$1;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public configure()Ljavax/validation/Configuration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/Configuration<",
            "*>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/validation/Validation$GenericBootstrapImpl;->getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;

    move-result-object v0

    .line 257
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljavax/validation/ValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :try_start_1
    invoke-interface {v0}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/validation/spi/ValidationProvider;

    invoke-interface {v0, p0}, Ljavax/validation/spi/ValidationProvider;->createGenericConfiguration(Ljavax/validation/spi/BootstrapState;)Ljavax/validation/Configuration;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to instantiate Configuration."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :cond_1
    new-instance v0, Ljavax/validation/ValidationException;

    const-string v1, "Unable to create a Configuration, because no Bean Validation provider could be found. Add a provider like Hibernate Validator (RI) to your classpath."

    invoke-direct {v0, v1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 265
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to get available provider resolvers."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 261
    throw v0
.end method

.method public getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;
    .locals 2

    .line 244
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljavax/validation/Validation$DefaultValidationProviderResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$DefaultValidationProviderResolver;-><init>(Ljavax/validation/Validation$1;)V

    iput-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    .line 247
    :cond_0
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    return-object v0
.end method

.method public getValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;
    .locals 1

    .line 240
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    return-object v0
.end method

.method public providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/GenericBootstrap;
    .locals 0

    .line 235
    iput-object p1, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    return-object p0
.end method
