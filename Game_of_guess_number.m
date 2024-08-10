


clc;
clear;

continueGame = 1;
amountOfGuess1 = 0;
amountOfGuess2 = 0;
amountOfGuess3 = 0;

fprintf('WELCOME TO GAME OF GUESS NUMBER.\n')

% STAGE 1
number = round(rand(1)*4+1);
fprintf('In the first stage, you will try to guess the number formed between 1 and 5 in a maximum of 3 guesses.\n\n')
while continueGame 
    guess = input ('Please enter your guess : '); 
    if guess == -1  %The user exits the game when the user  enters the number -1
        fprintf('You exited the game voluntarily.\n');
        return
    elseif (guess<1)  || (guess>5)  %When the user enters a value outside the range, it forces the user to enter a value within the range. 
        fprintf('"Please enter a value within the range!"\n\n');
        continue; 
    elseif guess ~= floor(guess)
        fprintf('Please enter a integer.\n\n');
        continue;
    end
    amountOfGuess1 = amountOfGuess1+1; %When the user makes a guess, it increases the guess amount by one
    if guess == number %If the user's guess is equal to the number, it allows to proceed to the next stage
        fprintf('Congratulations, you completed the 1st round by guessing correctly on your %d guess and you are entitled to move on to the 2nd round.\n\n',amountOfGuess1');

        % STAGE 2
        number= round(rand(1)*9+1);
        fprintf('In the second stage, you will try to guess the number formed between 1 and 10 in a maximum of 4 guesses.\n\n')
        while continueGame
            guess = input ('Please enter your guess : ');
            if guess ==-1
                fprintf('You exited the game voluntarily.\n');
                return;
            elseif (guess<1)  || (guess>10)
                fprintf('"Please enter a value within the range!"\n\n');
                continue;
            elseif guess ~= floor(guess)
                fprintf('Please enter a integer.\n\n');
                continue;
            end
            amountOfGuess2 = amountOfGuess2+1;
            if guess == number
                fprintf ('Congratulations, you completed the 2nd round by guessing correctly on your %d guess and you are entitled to move on to the 3rd round.\n\n',amountOfGuess2');
                
                % STAGE 3
                number= round(rand(1)*19+1);
                fprintf('In the last and 3rd stage, you will try to guess the number formed between 1 and 20 in a maximum of 5 guesses.\n\n')
                while continueGame
                    guess = input ('Please enter your guess : ');
                    if guess == -1
                        fprintf('You exited the game voluntarily.\n');
                        return;
                    elseif (guess<1)  || (guess>20)
                        fprintf('"Please enter a value within the range!"\n\n');
                        continue;
                    elseif guess ~= floor(guess)
                        fprintf('Please enter a integer.\n\n')
                        continue;
                    end
                    amountOfGuess3 = amountOfGuess3+1;
                    if guess== number
                        fprintf('CONGRATULATIONS! You finished the game on the last level, level 3, by finding the numbers in a total of %d guesses.',amountOfGuess1+amountOfGuess2+amountOfGuess3);
                        return;
                    elseif amountOfGuess3 == 5
                        fprintf('In the level 3, you used your 5 guesses and lost.\n');
                        fprintf('You made %d guesses in total.\n',amountOfGuess1+amountOfGuess2+amountOfGuess3);
                        fprintf('Correct number is %d.\n',number);
                        return;
                    else
                        fprintf('You have %d guesses left.\n\n',5-amountOfGuess3);
                    end
                end
            elseif amountOfGuess2 == 4
                fprintf('In the level 2, you used your 4 guesses and lost.\n');
                fprintf('You made %d guesses in total.\n',amountOfGuess1+amountOfGuess2);
                fprintf('Correct number is %d.\n',number);
                return;
            else
                fprintf('You have %d guesses left.\n\n',4-amountOfGuess2);
            end
        end
    elseif amountOfGuess1 == 3 %When the user's guess amount is equal to the maximum guess amount, the user loses the game.
        fprintf('In the level 1, you used your 3 guesses and lost.\n');
        fprintf('Correct number is %d.\n',number);
        return;
    else %Prints on the screen how many guesses the user has left
        fprintf('You have %d guesses left.\n\n',3-amountOfGuess1); 
    end
end

