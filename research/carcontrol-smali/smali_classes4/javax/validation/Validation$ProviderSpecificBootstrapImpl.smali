.class Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;
.super Ljava/lang/Object;
.source "Validation.java"

# interfaces
.implements Ljavax/validation/bootstrap/ProviderSpecificBootstrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderSpecificBootstrapImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/validation/Configuration<",
        "TT;>;U::",
        "Ljavax/validation/spi/ValidationProvider<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljavax/validation/bootstrap/ProviderSpecificBootstrap<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private resolver:Ljavax/validation/ValidationProviderResolver;

.field private final validationProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public configure()Ljavax/validation/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 200
    new-instance v0, Ljavax/validation/Validation$GenericBootstrapImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>(Ljavax/validation/Validation$1;)V

    .line 201
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Ljavax/validation/Validation$GenericBootstrapImpl;->getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;

    move-result-object v1

    iput-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/validation/Validation$GenericBootstrapImpl;->providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/GenericBootstrap;

    .line 211
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    invoke-interface {v1}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/validation/spi/ValidationProvider;

    .line 218
    iget-object v3, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/validation/spi/ValidationProvider;

    .line 220
    invoke-interface {v1, v0}, Ljavax/validation/spi/ValidationProvider;->createSpecializedConfiguration(Ljavax/validation/spi/BootstrapState;)Ljavax/validation/Configuration;

    move-result-object v0

    return-object v0

    .line 224
    :cond_2
    new-instance v0, Ljavax/validation/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to get available provider resolvers."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :cond_3
    new-instance v0, Ljavax/validation/ValidationException;

    const-string v1, "builder is mandatory. Use Validation.byDefaultProvider() to use the generic provider discovery mechanism"

    invoke-direct {v0, v1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/ProviderSpecificBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ValidationProviderResolver;",
            ")",
            "Ljavax/validation/bootstrap/ProviderSpecificBootstrap<",
            "TT;>;"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    return-object p0
.end method
